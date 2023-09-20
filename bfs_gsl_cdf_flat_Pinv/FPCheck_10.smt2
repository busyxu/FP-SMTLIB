(declare-fun x_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!41 () (_ BitVec 64))
(declare-fun a_ack!40 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!42))
               ((_ to_fp 11 53) x_ack!42))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!42)))
       ((_ to_fp 11 53) x_ack!42)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!42))
          ((_ to_fp 11 53) a_ack!40))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!42)
          ((_ to_fp 11 53) b_ack!41))))

(check-sat)
(exit)
