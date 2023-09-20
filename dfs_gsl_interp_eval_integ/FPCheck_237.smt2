(declare-fun x1_ack!2760 () (_ BitVec 64))
(declare-fun x0_ack!2764 () (_ BitVec 64))
(declare-fun x2_ack!2761 () (_ BitVec 64))
(declare-fun b_ack!2763 () (_ BitVec 64))
(declare-fun a_ack!2762 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2764) ((_ to_fp 11 53) x1_ack!2760)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2760) ((_ to_fp 11 53) x2_ack!2761)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2760)
                       ((_ to_fp 11 53) x0_ack!2764))
               ((_ to_fp 11 53) x0_ack!2764))
       ((_ to_fp 11 53) x1_ack!2760)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2760)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2760)
                       ((_ to_fp 11 53) x0_ack!2764)))
       ((_ to_fp 11 53) x0_ack!2764)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2761)
                       ((_ to_fp 11 53) x1_ack!2760))
               ((_ to_fp 11 53) x1_ack!2760))
       ((_ to_fp 11 53) x2_ack!2761)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2761)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2761)
                       ((_ to_fp 11 53) x1_ack!2760)))
       ((_ to_fp 11 53) x1_ack!2760)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2760)
                    ((_ to_fp 11 53) x0_ack!2764))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2761)
                    ((_ to_fp 11 53) x1_ack!2760))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2762) ((_ to_fp 11 53) b_ack!2763))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2762) ((_ to_fp 11 53) x0_ack!2764))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2763) ((_ to_fp 11 53) x2_ack!2761))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2762) ((_ to_fp 11 53) b_ack!2763))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2762) ((_ to_fp 11 53) x0_ack!2764))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2762) ((_ to_fp 11 53) x1_ack!2760))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2763) ((_ to_fp 11 53) x0_ack!2764))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2763) ((_ to_fp 11 53) x1_ack!2760)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2760) ((_ to_fp 11 53) b_ack!2763))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2760)
                    ((_ to_fp 11 53) x0_ack!2764))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2761)
                    ((_ to_fp 11 53) x1_ack!2760))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2760)
                  ((_ to_fp 11 53) x1_ack!2760))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2760)
                  ((_ to_fp 11 53) x1_ack!2760)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2763)
                  ((_ to_fp 11 53) x1_ack!2760))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2763)
                  ((_ to_fp 11 53) x1_ack!2760)))))

(check-sat)
(exit)
