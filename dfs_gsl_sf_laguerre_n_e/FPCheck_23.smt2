(declare-fun a_ack!114 () (_ BitVec 32))
(declare-fun c_ack!113 () (_ BitVec 64))
(declare-fun b_ack!112 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!114 #x00000000)))
(assert (not (= #x00000000 a_ack!114)))
(assert (not (= #x00000001 a_ack!114)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!114 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!114)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!112) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!112) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!112))))

(check-sat)
(exit)
