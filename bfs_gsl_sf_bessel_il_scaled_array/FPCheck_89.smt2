(declare-fun b_ack!327 () (_ BitVec 64))
(declare-fun a_ack!328 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!328) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!328))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!327)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!327)))
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!327)))))

(check-sat)
(exit)
