(declare-fun x0_ack!261 () (_ BitVec 64))
(declare-fun x1_ack!260 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!261)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!261))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x3e50000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x1_ack!260)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!261)))))
(let ((a!2 (not (fp.eq (fp.div roundNearestTiesToEven
                               (fp.sub roundNearestTiesToEven a!1 a!1)
                               ((_ to_fp 11 53) #x3e50000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!260)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) x0_ack!261)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!260)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) x0_ack!261))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3e50000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!260)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!260)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) x0_ack!261))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!261)))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   a!4)
                           a!5)
                   ((_ to_fp 11 53) #x3e50000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!3
                      (fp.mul roundNearestTiesToEven a!6 a!6))
              ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!261))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!260)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) x0_ack!261)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!260)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!261)
                                   ((_ to_fp 11 53) x0_ack!261))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!3 a!4)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!3 a!4)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
  (not (fp.eq a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000032 x0_ack!261))

(check-sat)
(exit)
