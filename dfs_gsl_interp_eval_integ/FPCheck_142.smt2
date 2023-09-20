(declare-fun x1_ack!1572 () (_ BitVec 64))
(declare-fun x0_ack!1579 () (_ BitVec 64))
(declare-fun x2_ack!1573 () (_ BitVec 64))
(declare-fun b_ack!1578 () (_ BitVec 64))
(declare-fun a_ack!1577 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1574 () (_ BitVec 64))
(declare-fun y1_ack!1575 () (_ BitVec 64))
(declare-fun y2_ack!1576 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1579) ((_ to_fp 11 53) x1_ack!1572)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1572) ((_ to_fp 11 53) x2_ack!1573)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1572)
                       ((_ to_fp 11 53) x0_ack!1579))
               ((_ to_fp 11 53) x0_ack!1579))
       ((_ to_fp 11 53) x1_ack!1572)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1572)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1572)
                       ((_ to_fp 11 53) x0_ack!1579)))
       ((_ to_fp 11 53) x0_ack!1579)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1573)
                       ((_ to_fp 11 53) x1_ack!1572))
               ((_ to_fp 11 53) x1_ack!1572))
       ((_ to_fp 11 53) x2_ack!1573)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1573)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1573)
                       ((_ to_fp 11 53) x1_ack!1572)))
       ((_ to_fp 11 53) x1_ack!1572)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1572)
                    ((_ to_fp 11 53) x0_ack!1579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1573)
                    ((_ to_fp 11 53) x1_ack!1572))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1577) ((_ to_fp 11 53) b_ack!1578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1577) ((_ to_fp 11 53) x0_ack!1579))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1578) ((_ to_fp 11 53) x2_ack!1573))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1577) ((_ to_fp 11 53) b_ack!1578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1577) ((_ to_fp 11 53) x0_ack!1579))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1577) ((_ to_fp 11 53) x1_ack!1572))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1578) ((_ to_fp 11 53) x0_ack!1579))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1578) ((_ to_fp 11 53) x1_ack!1572)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1572) ((_ to_fp 11 53) b_ack!1578))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1572)
                    ((_ to_fp 11 53) x0_ack!1579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1576)
                           ((_ to_fp 11 53) y1_ack!1575))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1573)
                                   ((_ to_fp 11 53) x1_ack!1572)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1575)
                           ((_ to_fp 11 53) y0_ack!1574))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1573)
                                   ((_ to_fp 11 53) x1_ack!1572))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1577)
                           ((_ to_fp 11 53) x0_ack!1579))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1572)
                           ((_ to_fp 11 53) x0_ack!1579))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1577)
                                   ((_ to_fp 11 53) x0_ack!1579))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1577)
                                   ((_ to_fp 11 53) x0_ack!1579)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1577)
                                    ((_ to_fp 11 53) x0_ack!1579))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!1572)
                                    ((_ to_fp 11 53) x0_ack!1579))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579))
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
                                    ((_ to_fp 11 53) x1_ack!1572)
                                    ((_ to_fp 11 53) x0_ack!1579))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1575)
                                   ((_ to_fp 11 53) y0_ack!1574))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1572)
                                   ((_ to_fp 11 53) x0_ack!1579)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!1574)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            a!8
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!10))
    a!12)))))))

(check-sat)
(exit)
