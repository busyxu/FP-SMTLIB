(declare-fun a_ack!160 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!160))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!160))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!160))
             ((_ to_fp 11 53) #x401c48c6001f1ea6))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!160))
             ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!160))
       ((_ to_fp 11 53) #x7fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!160))
       ((_ to_fp 11 53) #x5fe0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!160))
                           (fp.abs ((_ to_fp 11 53) a_ack!160))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         (fp.abs a!1))
                 ((_ to_fp 11 53) #x3cc0000000000000))
         (fp.abs a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!160))
                           (fp.abs ((_ to_fp 11 53) a_ack!160))))))
  (not (fp.eq (fp.abs (fp.abs a!1)) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!160))
                           (fp.abs ((_ to_fp 11 53) a_ack!160))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         (fp.abs a!1))
                 (fp.abs a!1))
         ((_ to_fp 11 53) #x3cc0000000000000))))

(check-sat)
(exit)
