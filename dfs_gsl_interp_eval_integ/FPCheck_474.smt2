(declare-fun x1_ack!5894 () (_ BitVec 64))
(declare-fun x0_ack!5900 () (_ BitVec 64))
(declare-fun x2_ack!5895 () (_ BitVec 64))
(declare-fun b_ack!5899 () (_ BitVec 64))
(declare-fun a_ack!5898 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!5896 () (_ BitVec 64))
(declare-fun y2_ack!5897 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5900) ((_ to_fp 11 53) x1_ack!5894)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5894) ((_ to_fp 11 53) x2_ack!5895)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5894)
                       ((_ to_fp 11 53) x0_ack!5900))
               ((_ to_fp 11 53) x0_ack!5900))
       ((_ to_fp 11 53) x1_ack!5894)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5894)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5894)
                       ((_ to_fp 11 53) x0_ack!5900)))
       ((_ to_fp 11 53) x0_ack!5900)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5895)
                       ((_ to_fp 11 53) x1_ack!5894))
               ((_ to_fp 11 53) x1_ack!5894))
       ((_ to_fp 11 53) x2_ack!5895)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5895)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5895)
                       ((_ to_fp 11 53) x1_ack!5894)))
       ((_ to_fp 11 53) x1_ack!5894)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5894)
                    ((_ to_fp 11 53) x0_ack!5900))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5895)
                    ((_ to_fp 11 53) x1_ack!5894))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5898) ((_ to_fp 11 53) b_ack!5899))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5898) ((_ to_fp 11 53) x0_ack!5900))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5899) ((_ to_fp 11 53) x2_ack!5895))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5898) ((_ to_fp 11 53) b_ack!5899))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5898) ((_ to_fp 11 53) x0_ack!5900))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5898) ((_ to_fp 11 53) x1_ack!5894)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5894) ((_ to_fp 11 53) a_ack!5898))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5899) ((_ to_fp 11 53) x1_ack!5894))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5899) ((_ to_fp 11 53) x2_ack!5895))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5895)
                    ((_ to_fp 11 53) x1_ack!5894))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!5897)
          ((_ to_fp 11 53) y1_ack!5896))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!5895)
          ((_ to_fp 11 53) x1_ack!5894))))

(check-sat)
(exit)
