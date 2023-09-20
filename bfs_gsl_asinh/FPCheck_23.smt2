(declare-fun a_ack!32 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!32))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!32)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!32)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!32))
                           (fp.abs ((_ to_fp 11 53) a_ack!32)))
                   (fp.abs ((_ to_fp 11 53) a_ack!32)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!32)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!32)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!32))
                           (fp.abs ((_ to_fp 11 53) a_ack!32)))
                   (fp.abs ((_ to_fp 11 53) a_ack!32)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!32)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) a_ack!32))
               ((_ to_fp 11 53) #x417555556aab555c))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
