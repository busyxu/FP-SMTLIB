(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun x_ack!55 () (_ BitVec 64))
(declare-fun b_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) a_ack!53))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) b_ack!54))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!54)
                       ((_ to_fp 11 53) a_ack!53))
               ((_ to_fp 11 53) a_ack!53))
       ((_ to_fp 11 53) b_ack!54)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!54)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!54)
                       ((_ to_fp 11 53) a_ack!53)))
       ((_ to_fp 11 53) a_ack!53)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!54)
          ((_ to_fp 11 53) x_ack!55))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!54)
          ((_ to_fp 11 53) a_ack!53))))

(check-sat)
(exit)
