(declare-fun x1_ack!1628 () (_ BitVec 64))
(declare-fun x0_ack!1635 () (_ BitVec 64))
(declare-fun x2_ack!1629 () (_ BitVec 64))
(declare-fun b_ack!1634 () (_ BitVec 64))
(declare-fun a_ack!1633 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1630 () (_ BitVec 64))
(declare-fun y1_ack!1631 () (_ BitVec 64))
(declare-fun y2_ack!1632 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1635) ((_ to_fp 11 53) x1_ack!1628)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1628) ((_ to_fp 11 53) x2_ack!1629)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1628)
                       ((_ to_fp 11 53) x0_ack!1635))
               ((_ to_fp 11 53) x0_ack!1635))
       ((_ to_fp 11 53) x1_ack!1628)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1628)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1628)
                       ((_ to_fp 11 53) x0_ack!1635)))
       ((_ to_fp 11 53) x0_ack!1635)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1629)
                       ((_ to_fp 11 53) x1_ack!1628))
               ((_ to_fp 11 53) x1_ack!1628))
       ((_ to_fp 11 53) x2_ack!1629)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1629)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1629)
                       ((_ to_fp 11 53) x1_ack!1628)))
       ((_ to_fp 11 53) x1_ack!1628)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1628)
                    ((_ to_fp 11 53) x0_ack!1635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1629)
                    ((_ to_fp 11 53) x1_ack!1628))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1633) ((_ to_fp 11 53) b_ack!1634))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1633) ((_ to_fp 11 53) x0_ack!1635))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1634) ((_ to_fp 11 53) x2_ack!1629))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1633) ((_ to_fp 11 53) b_ack!1634))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1633) ((_ to_fp 11 53) x0_ack!1635))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1633) ((_ to_fp 11 53) x1_ack!1628))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1634) ((_ to_fp 11 53) x0_ack!1635))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1634) ((_ to_fp 11 53) x1_ack!1628)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1628) ((_ to_fp 11 53) b_ack!1634))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1628)
                    ((_ to_fp 11 53) x0_ack!1635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1632)
                           ((_ to_fp 11 53) y1_ack!1631))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1629)
                                   ((_ to_fp 11 53) x1_ack!1628)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1631)
                           ((_ to_fp 11 53) y0_ack!1630))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1629)
                                   ((_ to_fp 11 53) x1_ack!1628))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1633)
                           ((_ to_fp 11 53) x0_ack!1635))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1628)
                           ((_ to_fp 11 53) x0_ack!1635))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1633)
                                   ((_ to_fp 11 53) x0_ack!1635))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1633)
                                   ((_ to_fp 11 53) x0_ack!1635)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1633)
                                    ((_ to_fp 11 53) x0_ack!1635))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!1628)
                                    ((_ to_fp 11 53) x0_ack!1635))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!1628)
                                    ((_ to_fp 11 53) x0_ack!1635))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1631)
                                   ((_ to_fp 11 53) y0_ack!1630))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1628)
                                   ((_ to_fp 11 53) x0_ack!1635)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!1630)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10))
                    a!12)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!1628)
            ((_ to_fp 11 53) a_ack!1633))
    a!13))))))))

(check-sat)
(exit)
