(declare-fun x1_ack!4985 () (_ BitVec 64))
(declare-fun x0_ack!4989 () (_ BitVec 64))
(declare-fun x2_ack!4986 () (_ BitVec 64))
(declare-fun b_ack!4988 () (_ BitVec 64))
(declare-fun a_ack!4987 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4989) ((_ to_fp 11 53) x1_ack!4985)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4985) ((_ to_fp 11 53) x2_ack!4986)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4985)
                       ((_ to_fp 11 53) x0_ack!4989))
               ((_ to_fp 11 53) x0_ack!4989))
       ((_ to_fp 11 53) x1_ack!4985)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4985)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4985)
                       ((_ to_fp 11 53) x0_ack!4989)))
       ((_ to_fp 11 53) x0_ack!4989)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4986)
                       ((_ to_fp 11 53) x1_ack!4985))
               ((_ to_fp 11 53) x1_ack!4985))
       ((_ to_fp 11 53) x2_ack!4986)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4986)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4986)
                       ((_ to_fp 11 53) x1_ack!4985)))
       ((_ to_fp 11 53) x1_ack!4985)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4985)
                    ((_ to_fp 11 53) x0_ack!4989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4986)
                    ((_ to_fp 11 53) x1_ack!4985))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4987) ((_ to_fp 11 53) b_ack!4988))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4987) ((_ to_fp 11 53) x0_ack!4989))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4988) ((_ to_fp 11 53) x2_ack!4986))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4987) ((_ to_fp 11 53) b_ack!4988))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4987) ((_ to_fp 11 53) x0_ack!4989))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4987) ((_ to_fp 11 53) x1_ack!4985)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4985) ((_ to_fp 11 53) a_ack!4987))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4988) ((_ to_fp 11 53) x1_ack!4985))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4988) ((_ to_fp 11 53) x2_ack!4986)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4986)
                    ((_ to_fp 11 53) x1_ack!4985))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4987)
                       ((_ to_fp 11 53) x1_ack!4985))
               ((_ to_fp 11 53) x1_ack!4985))
       ((_ to_fp 11 53) a_ack!4987)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4987)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4987)
                       ((_ to_fp 11 53) x1_ack!4985)))
       ((_ to_fp 11 53) x1_ack!4985)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4987)
          ((_ to_fp 11 53) x1_ack!4985))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4988)
          ((_ to_fp 11 53) x1_ack!4985))))

(check-sat)
(exit)
