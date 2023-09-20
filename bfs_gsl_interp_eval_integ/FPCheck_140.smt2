(declare-fun x1_ack!1571 () (_ BitVec 64))
(declare-fun x0_ack!1575 () (_ BitVec 64))
(declare-fun x2_ack!1572 () (_ BitVec 64))
(declare-fun b_ack!1574 () (_ BitVec 64))
(declare-fun a_ack!1573 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1575) ((_ to_fp 11 53) x1_ack!1571)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1571) ((_ to_fp 11 53) x2_ack!1572)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1571)
                       ((_ to_fp 11 53) x0_ack!1575))
               ((_ to_fp 11 53) x0_ack!1575))
       ((_ to_fp 11 53) x1_ack!1571)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1571)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1571)
                       ((_ to_fp 11 53) x0_ack!1575)))
       ((_ to_fp 11 53) x0_ack!1575)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1572)
                       ((_ to_fp 11 53) x1_ack!1571))
               ((_ to_fp 11 53) x1_ack!1571))
       ((_ to_fp 11 53) x2_ack!1572)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1572)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1572)
                       ((_ to_fp 11 53) x1_ack!1571)))
       ((_ to_fp 11 53) x1_ack!1571)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1571)
                    ((_ to_fp 11 53) x0_ack!1575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1572)
                    ((_ to_fp 11 53) x1_ack!1571))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1573) ((_ to_fp 11 53) b_ack!1574))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1573) ((_ to_fp 11 53) x0_ack!1575))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1574) ((_ to_fp 11 53) x2_ack!1572))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1573) ((_ to_fp 11 53) b_ack!1574))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1573) ((_ to_fp 11 53) x0_ack!1575))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1573) ((_ to_fp 11 53) x1_ack!1571))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1574) ((_ to_fp 11 53) x0_ack!1575)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1571)
                    ((_ to_fp 11 53) x0_ack!1575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1574)
                                  ((_ to_fp 11 53) x0_ack!1575)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1574)
                           ((_ to_fp 11 53) x0_ack!1575)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1574)
                 ((_ to_fp 11 53) x0_ack!1575)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1574)
                                  ((_ to_fp 11 53) x0_ack!1575)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1574)
                           ((_ to_fp 11 53) x0_ack!1575)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1574)
                 ((_ to_fp 11 53) x0_ack!1575)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1573)
                                   ((_ to_fp 11 53) x0_ack!1575))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1573)
                                   ((_ to_fp 11 53) x0_ack!1575)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1574)
                                   ((_ to_fp 11 53) x0_ack!1575))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1573)
                    ((_ to_fp 11 53) x0_ack!1575))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1574)
                    ((_ to_fp 11 53) x0_ack!1575))))))

(check-sat)
(exit)
