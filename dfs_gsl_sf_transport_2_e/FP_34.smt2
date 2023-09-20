(declare-fun a_ack!275 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!275) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!275)
                       ((_ to_fp 11 53) a_ack!275))
               ((_ to_fp 11 53) a_ack!275))
       ((_ to_fp 11 53) a_ack!275)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!275)
                       ((_ to_fp 11 53) a_ack!275))
               ((_ to_fp 11 53) a_ack!275))
       ((_ to_fp 11 53) a_ack!275)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!275)
                           ((_ to_fp 11 53) a_ack!275))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!275)))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!275))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!275)
                           ((_ to_fp 11 53) a_ack!275))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!275)))
                   a!1)))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 a!1)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cb0000000000000)
                 (fp.abs ((_ to_fp 11 53) a_ack!275)))))))

(check-sat)
(exit)
