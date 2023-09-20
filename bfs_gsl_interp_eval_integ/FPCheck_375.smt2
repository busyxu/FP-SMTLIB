(declare-fun x1_ack!4679 () (_ BitVec 64))
(declare-fun x0_ack!4683 () (_ BitVec 64))
(declare-fun x2_ack!4680 () (_ BitVec 64))
(declare-fun b_ack!4682 () (_ BitVec 64))
(declare-fun a_ack!4681 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4683) ((_ to_fp 11 53) x1_ack!4679)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4679) ((_ to_fp 11 53) x2_ack!4680)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4679)
                       ((_ to_fp 11 53) x0_ack!4683))
               ((_ to_fp 11 53) x0_ack!4683))
       ((_ to_fp 11 53) x1_ack!4679)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4679)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4679)
                       ((_ to_fp 11 53) x0_ack!4683)))
       ((_ to_fp 11 53) x0_ack!4683)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4680)
                       ((_ to_fp 11 53) x1_ack!4679))
               ((_ to_fp 11 53) x1_ack!4679))
       ((_ to_fp 11 53) x2_ack!4680)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4680)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4680)
                       ((_ to_fp 11 53) x1_ack!4679)))
       ((_ to_fp 11 53) x1_ack!4679)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4679)
                    ((_ to_fp 11 53) x0_ack!4683))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4680)
                    ((_ to_fp 11 53) x1_ack!4679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4681) ((_ to_fp 11 53) b_ack!4682))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4681) ((_ to_fp 11 53) x0_ack!4683))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4682) ((_ to_fp 11 53) x2_ack!4680))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4681) ((_ to_fp 11 53) b_ack!4682))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4681) ((_ to_fp 11 53) x0_ack!4683))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4681) ((_ to_fp 11 53) x1_ack!4679))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4682) ((_ to_fp 11 53) x0_ack!4683))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4682) ((_ to_fp 11 53) x1_ack!4679))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4679)
                    ((_ to_fp 11 53) x0_ack!4683))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4681)
                  ((_ to_fp 11 53) x0_ack!4683))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4681)
                  ((_ to_fp 11 53) x0_ack!4683)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4682)
                  ((_ to_fp 11 53) x0_ack!4683))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4682)
                  ((_ to_fp 11 53) x0_ack!4683)))))

(check-sat)
(exit)
