(declare-fun b_ack!218 () (_ BitVec 64))
(declare-fun a_ack!219 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!218)
                    ((_ to_fp 11 53) a_ack!219))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!218)
                    ((_ to_fp 11 53) a_ack!219))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!218)
                    ((_ to_fp 11 53) a_ack!219))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!219))
                           (fp.abs ((_ to_fp 11 53) b_ack!218)))
                   (fp.abs ((_ to_fp 11 53) a_ack!219)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!218)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!219))
                           (fp.abs ((_ to_fp 11 53) b_ack!218)))
                   (fp.abs ((_ to_fp 11 53) b_ack!218)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!219)))))

(check-sat)
(exit)
