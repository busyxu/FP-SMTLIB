(declare-fun x1_ack!1762 () (_ BitVec 64))
(declare-fun x0_ack!1766 () (_ BitVec 64))
(declare-fun x2_ack!1763 () (_ BitVec 64))
(declare-fun b_ack!1765 () (_ BitVec 64))
(declare-fun a_ack!1764 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1766) ((_ to_fp 11 53) x1_ack!1762)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1762) ((_ to_fp 11 53) x2_ack!1763)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1762)
                       ((_ to_fp 11 53) x0_ack!1766))
               ((_ to_fp 11 53) x0_ack!1766))
       ((_ to_fp 11 53) x1_ack!1762)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1762)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1762)
                       ((_ to_fp 11 53) x0_ack!1766)))
       ((_ to_fp 11 53) x0_ack!1766)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1763)
                       ((_ to_fp 11 53) x1_ack!1762))
               ((_ to_fp 11 53) x1_ack!1762))
       ((_ to_fp 11 53) x2_ack!1763)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1763)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1763)
                       ((_ to_fp 11 53) x1_ack!1762)))
       ((_ to_fp 11 53) x1_ack!1762)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1762)
                    ((_ to_fp 11 53) x0_ack!1766))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1763)
                    ((_ to_fp 11 53) x1_ack!1762))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1764) ((_ to_fp 11 53) b_ack!1765))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1764) ((_ to_fp 11 53) x0_ack!1766))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1765) ((_ to_fp 11 53) x2_ack!1763))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1764) ((_ to_fp 11 53) b_ack!1765))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1764) ((_ to_fp 11 53) x0_ack!1766))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1764) ((_ to_fp 11 53) x1_ack!1762))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1765) ((_ to_fp 11 53) x0_ack!1766)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1762)
                    ((_ to_fp 11 53) x0_ack!1766))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1765)
                                  ((_ to_fp 11 53) x0_ack!1766)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1765)
                                   ((_ to_fp 11 53) x0_ack!1766))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1765)
                                   ((_ to_fp 11 53) x0_ack!1766)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1765)
                           ((_ to_fp 11 53) x0_ack!1766)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1765)
                 ((_ to_fp 11 53) x0_ack!1766)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1765)
                                  ((_ to_fp 11 53) x0_ack!1766)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1765)
                                   ((_ to_fp 11 53) x0_ack!1766))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1765)
                                   ((_ to_fp 11 53) x0_ack!1766)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1765)
                           ((_ to_fp 11 53) x0_ack!1766)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1765)
                 ((_ to_fp 11 53) x0_ack!1766)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1765)
          ((_ to_fp 11 53) x0_ack!1766))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1765)
          ((_ to_fp 11 53) x0_ack!1766))))

(check-sat)
(exit)
