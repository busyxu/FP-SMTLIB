(declare-fun p0_ack!634 () (_ BitVec 64))
(declare-fun x0_ack!631 () (_ BitVec 64))
(declare-fun p2_ack!630 () (_ BitVec 64))
(declare-fun p1_ack!629 () (_ BitVec 64))
(declare-fun x1_ack!632 () (_ BitVec 64))
(declare-fun step_size_ack!633 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!630))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!631)
                                  ((_ to_fp 11 53) p0_ack!634)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!630))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!631)
                                   ((_ to_fp 11 53) p0_ack!634))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!632)
                                  ((_ to_fp 11 53) p1_ack!629)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!630))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!631)
                                   ((_ to_fp 11 53) p0_ack!634))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!630))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!631)
                                   ((_ to_fp 11 53) p0_ack!634))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!630))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!631)
                           ((_ to_fp 11 53) p0_ack!634))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!632)
                           ((_ to_fp 11 53) p1_ack!629)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!633))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (FPCHECK_FADD_OVERFLOW x1_ack!632 #x0000000000000000))

(check-sat)
(exit)
