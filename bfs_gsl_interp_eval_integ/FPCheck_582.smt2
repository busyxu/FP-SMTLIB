(declare-fun x1_ack!7337 () (_ BitVec 64))
(declare-fun x0_ack!7341 () (_ BitVec 64))
(declare-fun x2_ack!7338 () (_ BitVec 64))
(declare-fun b_ack!7340 () (_ BitVec 64))
(declare-fun a_ack!7339 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7341) ((_ to_fp 11 53) x1_ack!7337)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7337) ((_ to_fp 11 53) x2_ack!7338)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7337)
                       ((_ to_fp 11 53) x0_ack!7341))
               ((_ to_fp 11 53) x0_ack!7341))
       ((_ to_fp 11 53) x1_ack!7337)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7337)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7337)
                       ((_ to_fp 11 53) x0_ack!7341)))
       ((_ to_fp 11 53) x0_ack!7341)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7338)
                       ((_ to_fp 11 53) x1_ack!7337))
               ((_ to_fp 11 53) x1_ack!7337))
       ((_ to_fp 11 53) x2_ack!7338)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7338)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7338)
                       ((_ to_fp 11 53) x1_ack!7337)))
       ((_ to_fp 11 53) x1_ack!7337)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7337)
                    ((_ to_fp 11 53) x0_ack!7341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7338)
                    ((_ to_fp 11 53) x1_ack!7337))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7339) ((_ to_fp 11 53) b_ack!7340))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7339) ((_ to_fp 11 53) x0_ack!7341))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7340) ((_ to_fp 11 53) x2_ack!7338))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7339) ((_ to_fp 11 53) b_ack!7340))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7339) ((_ to_fp 11 53) x0_ack!7341))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7339) ((_ to_fp 11 53) x1_ack!7337))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7340) ((_ to_fp 11 53) x0_ack!7341))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7340) ((_ to_fp 11 53) x1_ack!7337)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7337) ((_ to_fp 11 53) b_ack!7340))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7337)
                    ((_ to_fp 11 53) x0_ack!7341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7338)
                    ((_ to_fp 11 53) x1_ack!7337))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7337)
                  ((_ to_fp 11 53) x1_ack!7337))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7337)
                  ((_ to_fp 11 53) x1_ack!7337)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7340)
                  ((_ to_fp 11 53) x1_ack!7337))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7340)
                  ((_ to_fp 11 53) x1_ack!7337)))))

(check-sat)
(exit)
