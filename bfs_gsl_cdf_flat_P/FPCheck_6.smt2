(declare-fun a_ack!41 () (_ BitVec 64))
(declare-fun x_ack!43 () (_ BitVec 64))
(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) a_ack!41))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) b_ack!42))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!42)
                       ((_ to_fp 11 53) a_ack!41))
               ((_ to_fp 11 53) a_ack!41))
       ((_ to_fp 11 53) b_ack!42)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!42)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!42)
                       ((_ to_fp 11 53) a_ack!41)))
       ((_ to_fp 11 53) a_ack!41)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!43)
          ((_ to_fp 11 53) a_ack!41))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!42)
          ((_ to_fp 11 53) a_ack!41))))

(check-sat)
(exit)
