(declare-fun a_ack!718 () (_ BitVec 64))
(declare-fun b_ack!715 () (_ BitVec 64))
(declare-fun c_ack!716 () (_ BitVec 64))
(declare-fun d_ack!717 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!718) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!715) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!716) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!717)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!717) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!717))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!716)
                       ((_ to_fp 11 53) b_ack!715)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!717))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!717)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!717)
                                   ((_ to_fp 11 53) d_ack!717))
                           ((_ to_fp 11 53) #x4014000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) d_ack!717)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!717)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            ((_ to_fp 11 53) d_ack!717))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
