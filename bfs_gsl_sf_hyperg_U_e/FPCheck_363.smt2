(declare-fun c_ack!1532 () (_ BitVec 64))
(declare-fun a_ack!1533 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1531 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1532) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1533) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1532) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!1533)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1533)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1531)
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1533)
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (bvslt ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!1533)))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvand ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!1533)))
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (FPCHECK_FMUL_OVERFLOW c_ack!1532 c_ack!1532))

(check-sat)
(exit)
