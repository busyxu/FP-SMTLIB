(declare-fun b_ack!326 () (_ BitVec 64))
(declare-fun a_ack!327 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!326)
                    ((_ to_fp 11 53) a_ack!327))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!326)
                    ((_ to_fp 11 53) a_ack!327))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!326)
                    ((_ to_fp 11 53) a_ack!327))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!327))
                           (fp.abs ((_ to_fp 11 53) b_ack!326)))
                   (fp.abs ((_ to_fp 11 53) a_ack!327)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!326)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!327))
                           (fp.abs ((_ to_fp 11 53) b_ack!326)))
                   (fp.abs ((_ to_fp 11 53) b_ack!326)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!327)))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cb0000000000000
  (fp.add roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!327))
          (fp.abs ((_ to_fp 11 53) b_ack!326)))))

(check-sat)
(exit)
