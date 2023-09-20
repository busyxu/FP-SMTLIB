(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun x_ack!61 () (_ BitVec 64))
(declare-fun b_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!61) ((_ to_fp 11 53) a_ack!59))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!61) ((_ to_fp 11 53) b_ack!60))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!60)
                       ((_ to_fp 11 53) a_ack!59))
               ((_ to_fp 11 53) a_ack!59))
       ((_ to_fp 11 53) b_ack!60)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!60)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!60)
                       ((_ to_fp 11 53) a_ack!59)))
       ((_ to_fp 11 53) a_ack!59)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!61)
          ((_ to_fp 11 53) a_ack!59))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!60)
          ((_ to_fp 11 53) a_ack!59))))

(check-sat)
(exit)
