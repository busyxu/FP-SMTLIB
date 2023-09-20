(declare-fun x1_ack!5340 () (_ BitVec 64))
(declare-fun x0_ack!5344 () (_ BitVec 64))
(declare-fun x2_ack!5341 () (_ BitVec 64))
(declare-fun b_ack!5343 () (_ BitVec 64))
(declare-fun a_ack!5342 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5344) ((_ to_fp 11 53) x1_ack!5340)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5340) ((_ to_fp 11 53) x2_ack!5341)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5340)
                       ((_ to_fp 11 53) x0_ack!5344))
               ((_ to_fp 11 53) x0_ack!5344))
       ((_ to_fp 11 53) x1_ack!5340)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5340)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5340)
                       ((_ to_fp 11 53) x0_ack!5344)))
       ((_ to_fp 11 53) x0_ack!5344)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5341)
                       ((_ to_fp 11 53) x1_ack!5340))
               ((_ to_fp 11 53) x1_ack!5340))
       ((_ to_fp 11 53) x2_ack!5341)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5341)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5341)
                       ((_ to_fp 11 53) x1_ack!5340)))
       ((_ to_fp 11 53) x1_ack!5340)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5340)
                    ((_ to_fp 11 53) x0_ack!5344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5341)
                    ((_ to_fp 11 53) x1_ack!5340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5342) ((_ to_fp 11 53) b_ack!5343))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5342) ((_ to_fp 11 53) x0_ack!5344))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5343) ((_ to_fp 11 53) x2_ack!5341))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5342) ((_ to_fp 11 53) b_ack!5343))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5342) ((_ to_fp 11 53) x0_ack!5344))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5342) ((_ to_fp 11 53) x1_ack!5340)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5340) ((_ to_fp 11 53) a_ack!5342))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5343) ((_ to_fp 11 53) x1_ack!5340))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5343) ((_ to_fp 11 53) x2_ack!5341)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5341)
                    ((_ to_fp 11 53) x1_ack!5340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5342)
                       ((_ to_fp 11 53) x1_ack!5340))
               ((_ to_fp 11 53) x1_ack!5340))
       ((_ to_fp 11 53) a_ack!5342)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5342)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5342)
                       ((_ to_fp 11 53) x1_ack!5340)))
       ((_ to_fp 11 53) x1_ack!5340)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5342)
          ((_ to_fp 11 53) x1_ack!5340))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5342)
          ((_ to_fp 11 53) x1_ack!5340))))

(check-sat)
(exit)
