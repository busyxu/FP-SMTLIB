(declare-fun b_ack!915 () (_ BitVec 64))
(declare-fun a_ack!916 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!915) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!915) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!916) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!915))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!916))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!915))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!915)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!915)))
       ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xc000000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!915)))))

(check-sat)
(exit)
