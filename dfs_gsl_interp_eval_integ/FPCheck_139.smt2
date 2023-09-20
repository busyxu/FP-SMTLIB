(declare-fun x1_ack!1532 () (_ BitVec 64))
(declare-fun x0_ack!1539 () (_ BitVec 64))
(declare-fun x2_ack!1533 () (_ BitVec 64))
(declare-fun b_ack!1538 () (_ BitVec 64))
(declare-fun a_ack!1537 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1534 () (_ BitVec 64))
(declare-fun y1_ack!1535 () (_ BitVec 64))
(declare-fun y2_ack!1536 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1539) ((_ to_fp 11 53) x1_ack!1532)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1532) ((_ to_fp 11 53) x2_ack!1533)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1532)
                       ((_ to_fp 11 53) x0_ack!1539))
               ((_ to_fp 11 53) x0_ack!1539))
       ((_ to_fp 11 53) x1_ack!1532)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1532)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1532)
                       ((_ to_fp 11 53) x0_ack!1539)))
       ((_ to_fp 11 53) x0_ack!1539)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1533)
                       ((_ to_fp 11 53) x1_ack!1532))
               ((_ to_fp 11 53) x1_ack!1532))
       ((_ to_fp 11 53) x2_ack!1533)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1533)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1533)
                       ((_ to_fp 11 53) x1_ack!1532)))
       ((_ to_fp 11 53) x1_ack!1532)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1532)
                    ((_ to_fp 11 53) x0_ack!1539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1533)
                    ((_ to_fp 11 53) x1_ack!1532))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1537) ((_ to_fp 11 53) b_ack!1538))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1537) ((_ to_fp 11 53) x0_ack!1539))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1538) ((_ to_fp 11 53) x2_ack!1533))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1537) ((_ to_fp 11 53) b_ack!1538))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1537) ((_ to_fp 11 53) x0_ack!1539))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1537) ((_ to_fp 11 53) x1_ack!1532))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1538) ((_ to_fp 11 53) x0_ack!1539))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1538) ((_ to_fp 11 53) x1_ack!1532)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1532) ((_ to_fp 11 53) b_ack!1538))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1532)
                    ((_ to_fp 11 53) x0_ack!1539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1536)
                           ((_ to_fp 11 53) y1_ack!1535))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1533)
                                   ((_ to_fp 11 53) x1_ack!1532)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1535)
                           ((_ to_fp 11 53) y0_ack!1534))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1533)
                                   ((_ to_fp 11 53) x1_ack!1532))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1537)
                                   ((_ to_fp 11 53) x0_ack!1539))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1537)
                                   ((_ to_fp 11 53) x0_ack!1539)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1537)
                                   ((_ to_fp 11 53) x0_ack!1539))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1535)
                                   ((_ to_fp 11 53) y0_ack!1534))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1537)
                                   ((_ to_fp 11 53) x0_ack!1539))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1532)
                                   ((_ to_fp 11 53) x0_ack!1539))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!1534) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
