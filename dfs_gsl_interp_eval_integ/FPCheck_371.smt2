(declare-fun x1_ack!4510 () (_ BitVec 64))
(declare-fun x0_ack!4516 () (_ BitVec 64))
(declare-fun x2_ack!4511 () (_ BitVec 64))
(declare-fun b_ack!4515 () (_ BitVec 64))
(declare-fun a_ack!4514 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4512 () (_ BitVec 64))
(declare-fun y2_ack!4513 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4516) ((_ to_fp 11 53) x1_ack!4510)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4510) ((_ to_fp 11 53) x2_ack!4511)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4510)
                       ((_ to_fp 11 53) x0_ack!4516))
               ((_ to_fp 11 53) x0_ack!4516))
       ((_ to_fp 11 53) x1_ack!4510)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4510)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4510)
                       ((_ to_fp 11 53) x0_ack!4516)))
       ((_ to_fp 11 53) x0_ack!4516)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4511)
                       ((_ to_fp 11 53) x1_ack!4510))
               ((_ to_fp 11 53) x1_ack!4510))
       ((_ to_fp 11 53) x2_ack!4511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4511)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4511)
                       ((_ to_fp 11 53) x1_ack!4510)))
       ((_ to_fp 11 53) x1_ack!4510)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4510)
                    ((_ to_fp 11 53) x0_ack!4516))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4511)
                    ((_ to_fp 11 53) x1_ack!4510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4514) ((_ to_fp 11 53) b_ack!4515))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4514) ((_ to_fp 11 53) x0_ack!4516))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4515) ((_ to_fp 11 53) x2_ack!4511))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4514) ((_ to_fp 11 53) b_ack!4515))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4514) ((_ to_fp 11 53) x0_ack!4516))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4514) ((_ to_fp 11 53) x1_ack!4510)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4510) ((_ to_fp 11 53) a_ack!4514))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4515) ((_ to_fp 11 53) x1_ack!4510))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4515) ((_ to_fp 11 53) x2_ack!4511)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4511)
                    ((_ to_fp 11 53) x1_ack!4510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!4513)
          ((_ to_fp 11 53) y1_ack!4512))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4511)
          ((_ to_fp 11 53) x1_ack!4510))))

(check-sat)
(exit)
