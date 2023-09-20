(declare-fun x1_ack!6899 () (_ BitVec 64))
(declare-fun x0_ack!6903 () (_ BitVec 64))
(declare-fun x2_ack!6900 () (_ BitVec 64))
(declare-fun b_ack!6902 () (_ BitVec 64))
(declare-fun a_ack!6901 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6903) ((_ to_fp 11 53) x1_ack!6899)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6899) ((_ to_fp 11 53) x2_ack!6900)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6899)
                       ((_ to_fp 11 53) x0_ack!6903))
               ((_ to_fp 11 53) x0_ack!6903))
       ((_ to_fp 11 53) x1_ack!6899)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6899)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6899)
                       ((_ to_fp 11 53) x0_ack!6903)))
       ((_ to_fp 11 53) x0_ack!6903)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6900)
                       ((_ to_fp 11 53) x1_ack!6899))
               ((_ to_fp 11 53) x1_ack!6899))
       ((_ to_fp 11 53) x2_ack!6900)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6900)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6900)
                       ((_ to_fp 11 53) x1_ack!6899)))
       ((_ to_fp 11 53) x1_ack!6899)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6899)
                    ((_ to_fp 11 53) x0_ack!6903))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6900)
                    ((_ to_fp 11 53) x1_ack!6899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6901) ((_ to_fp 11 53) b_ack!6902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6901) ((_ to_fp 11 53) x0_ack!6903))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6902) ((_ to_fp 11 53) x2_ack!6900))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6901) ((_ to_fp 11 53) b_ack!6902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6901) ((_ to_fp 11 53) x0_ack!6903))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6901) ((_ to_fp 11 53) x1_ack!6899)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6899) ((_ to_fp 11 53) a_ack!6901))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6902) ((_ to_fp 11 53) x1_ack!6899))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6902) ((_ to_fp 11 53) x2_ack!6900))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6900)
                    ((_ to_fp 11 53) x1_ack!6899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6901)
          ((_ to_fp 11 53) x1_ack!6899))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6901)
          ((_ to_fp 11 53) x1_ack!6899))))

(check-sat)
(exit)
