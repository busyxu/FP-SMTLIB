(declare-fun x1_ack!4899 () (_ BitVec 64))
(declare-fun x0_ack!4906 () (_ BitVec 64))
(declare-fun x2_ack!4900 () (_ BitVec 64))
(declare-fun b_ack!4905 () (_ BitVec 64))
(declare-fun a_ack!4904 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4901 () (_ BitVec 64))
(declare-fun y1_ack!4902 () (_ BitVec 64))
(declare-fun y2_ack!4903 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4906) ((_ to_fp 11 53) x1_ack!4899)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4899) ((_ to_fp 11 53) x2_ack!4900)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4899)
                       ((_ to_fp 11 53) x0_ack!4906))
               ((_ to_fp 11 53) x0_ack!4906))
       ((_ to_fp 11 53) x1_ack!4899)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4899)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4899)
                       ((_ to_fp 11 53) x0_ack!4906)))
       ((_ to_fp 11 53) x0_ack!4906)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4900)
                       ((_ to_fp 11 53) x1_ack!4899))
               ((_ to_fp 11 53) x1_ack!4899))
       ((_ to_fp 11 53) x2_ack!4900)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4900)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4900)
                       ((_ to_fp 11 53) x1_ack!4899)))
       ((_ to_fp 11 53) x1_ack!4899)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4899)
                    ((_ to_fp 11 53) x0_ack!4906))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4900)
                    ((_ to_fp 11 53) x1_ack!4899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4904) ((_ to_fp 11 53) b_ack!4905))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4904) ((_ to_fp 11 53) x0_ack!4906))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4905) ((_ to_fp 11 53) x2_ack!4900))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4904) ((_ to_fp 11 53) b_ack!4905))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4904) ((_ to_fp 11 53) x0_ack!4906))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4904) ((_ to_fp 11 53) x1_ack!4899)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4899) ((_ to_fp 11 53) a_ack!4904))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4905) ((_ to_fp 11 53) x1_ack!4899))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4905) ((_ to_fp 11 53) x2_ack!4900)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4900)
                    ((_ to_fp 11 53) x1_ack!4899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4903)
                           ((_ to_fp 11 53) y1_ack!4902))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4900)
                                   ((_ to_fp 11 53) x1_ack!4899)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4902)
                           ((_ to_fp 11 53) y0_ack!4901))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4899)
                                   ((_ to_fp 11 53) x0_ack!4906)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4900)
                                   ((_ to_fp 11 53) x1_ack!4899))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4899)
                                   ((_ to_fp 11 53) x0_ack!4906))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4900)
                    ((_ to_fp 11 53) x1_ack!4899)))))))

(check-sat)
(exit)
