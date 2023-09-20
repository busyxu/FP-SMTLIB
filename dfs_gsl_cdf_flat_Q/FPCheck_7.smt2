(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun x_ack!49 () (_ BitVec 64))
(declare-fun b_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!49) ((_ to_fp 11 53) a_ack!47))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!49) ((_ to_fp 11 53) b_ack!48))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!48)
                       ((_ to_fp 11 53) a_ack!47))
               ((_ to_fp 11 53) a_ack!47))
       ((_ to_fp 11 53) b_ack!48)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!48)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!48)
                       ((_ to_fp 11 53) a_ack!47)))
       ((_ to_fp 11 53) a_ack!47)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!48)
          ((_ to_fp 11 53) x_ack!49))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!48)
          ((_ to_fp 11 53) a_ack!47))))

(check-sat)
(exit)
