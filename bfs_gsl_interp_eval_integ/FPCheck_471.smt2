(declare-fun x1_ack!5949 () (_ BitVec 64))
(declare-fun x0_ack!5953 () (_ BitVec 64))
(declare-fun x2_ack!5950 () (_ BitVec 64))
(declare-fun b_ack!5952 () (_ BitVec 64))
(declare-fun a_ack!5951 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5953) ((_ to_fp 11 53) x1_ack!5949)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5949) ((_ to_fp 11 53) x2_ack!5950)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5949)
                       ((_ to_fp 11 53) x0_ack!5953))
               ((_ to_fp 11 53) x0_ack!5953))
       ((_ to_fp 11 53) x1_ack!5949)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5949)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5949)
                       ((_ to_fp 11 53) x0_ack!5953)))
       ((_ to_fp 11 53) x0_ack!5953)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5950)
                       ((_ to_fp 11 53) x1_ack!5949))
               ((_ to_fp 11 53) x1_ack!5949))
       ((_ to_fp 11 53) x2_ack!5950)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5950)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5950)
                       ((_ to_fp 11 53) x1_ack!5949)))
       ((_ to_fp 11 53) x1_ack!5949)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5949)
                    ((_ to_fp 11 53) x0_ack!5953))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5950)
                    ((_ to_fp 11 53) x1_ack!5949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5951) ((_ to_fp 11 53) b_ack!5952))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5951) ((_ to_fp 11 53) x0_ack!5953))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5952) ((_ to_fp 11 53) x2_ack!5950))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5951) ((_ to_fp 11 53) b_ack!5952))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5951) ((_ to_fp 11 53) x0_ack!5953))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5951) ((_ to_fp 11 53) x1_ack!5949))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5952) ((_ to_fp 11 53) x0_ack!5953))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5952) ((_ to_fp 11 53) x1_ack!5949)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5949) ((_ to_fp 11 53) b_ack!5952))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5949)
                    ((_ to_fp 11 53) x0_ack!5953))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5951)
                  ((_ to_fp 11 53) x0_ack!5953))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5951)
                  ((_ to_fp 11 53) x0_ack!5953)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5949)
                  ((_ to_fp 11 53) x0_ack!5953))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5949)
                  ((_ to_fp 11 53) x0_ack!5953)))))

(check-sat)
(exit)
