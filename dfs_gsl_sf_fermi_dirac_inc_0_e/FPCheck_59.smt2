(declare-fun b_ack!226 () (_ BitVec 64))
(declare-fun a_ack!227 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!226)
                    ((_ to_fp 11 53) a_ack!227))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!226)
                    ((_ to_fp 11 53) a_ack!227))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!226)
                    ((_ to_fp 11 53) a_ack!227))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!227))
                           (fp.abs ((_ to_fp 11 53) b_ack!226)))
                   (fp.abs ((_ to_fp 11 53) a_ack!227)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!226)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!227))
                           (fp.abs ((_ to_fp 11 53) b_ack!226)))
                   (fp.abs ((_ to_fp 11 53) b_ack!226)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!227)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cb0000000000000
  (fp.add roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!227))
          (fp.abs ((_ to_fp 11 53) b_ack!226)))))

(check-sat)
(exit)
