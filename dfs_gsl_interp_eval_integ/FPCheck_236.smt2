(declare-fun x1_ack!2750 () (_ BitVec 64))
(declare-fun x0_ack!2754 () (_ BitVec 64))
(declare-fun x2_ack!2751 () (_ BitVec 64))
(declare-fun b_ack!2753 () (_ BitVec 64))
(declare-fun a_ack!2752 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2754) ((_ to_fp 11 53) x1_ack!2750)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2750) ((_ to_fp 11 53) x2_ack!2751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2750)
                       ((_ to_fp 11 53) x0_ack!2754))
               ((_ to_fp 11 53) x0_ack!2754))
       ((_ to_fp 11 53) x1_ack!2750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2750)
                       ((_ to_fp 11 53) x0_ack!2754)))
       ((_ to_fp 11 53) x0_ack!2754)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2751)
                       ((_ to_fp 11 53) x1_ack!2750))
               ((_ to_fp 11 53) x1_ack!2750))
       ((_ to_fp 11 53) x2_ack!2751)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2751)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2751)
                       ((_ to_fp 11 53) x1_ack!2750)))
       ((_ to_fp 11 53) x1_ack!2750)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2750)
                    ((_ to_fp 11 53) x0_ack!2754))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2751)
                    ((_ to_fp 11 53) x1_ack!2750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2752) ((_ to_fp 11 53) b_ack!2753))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2752) ((_ to_fp 11 53) x0_ack!2754))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) x2_ack!2751))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2752) ((_ to_fp 11 53) b_ack!2753))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2752) ((_ to_fp 11 53) x0_ack!2754))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2752) ((_ to_fp 11 53) x1_ack!2750))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) x0_ack!2754))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) x1_ack!2750)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2750) ((_ to_fp 11 53) b_ack!2753))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2750)
                    ((_ to_fp 11 53) x0_ack!2754))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2751)
                    ((_ to_fp 11 53) x1_ack!2750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2750)
                  ((_ to_fp 11 53) x1_ack!2750))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2750)
                  ((_ to_fp 11 53) x1_ack!2750)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2753)
                  ((_ to_fp 11 53) x1_ack!2750))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2753)
                  ((_ to_fp 11 53) x1_ack!2750)))))

(check-sat)
(exit)
