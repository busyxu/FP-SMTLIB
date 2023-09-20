(declare-fun a_ack!165 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!165))
       ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!165)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!165))
                           (fp.abs ((_ to_fp 11 53) a_ack!165)))
                   (fp.abs ((_ to_fp 11 53) a_ack!165)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!165)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!165)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!165))
                           (fp.abs ((_ to_fp 11 53) a_ack!165)))
                   (fp.abs ((_ to_fp 11 53) a_ack!165)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!165)))))

(check-sat)
(exit)
