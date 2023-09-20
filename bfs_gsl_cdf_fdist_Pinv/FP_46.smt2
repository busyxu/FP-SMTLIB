(declare-fun x_ack!531 () (_ BitVec 64))
(declare-fun nu1_ack!529 () (_ BitVec 64))
(declare-fun nu2_ack!530 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!529) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!530) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!530)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!529)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (not (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) nu2_ack!530)
                               ((_ to_fp 11 53) #x3ff0000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!2 (and a!1
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) nu1_ack!529)
                               ((_ to_fp 11 53) #x0000000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))

(check-sat)
(exit)
