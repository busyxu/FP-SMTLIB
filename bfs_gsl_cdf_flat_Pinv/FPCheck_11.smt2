(declare-fun x_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!47 () (_ BitVec 64))
(declare-fun a_ack!46 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!48) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!48))
               ((_ to_fp 11 53) x_ack!48))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!48)))
       ((_ to_fp 11 53) x_ack!48)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!48))
          ((_ to_fp 11 53) a_ack!46))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!48)
          ((_ to_fp 11 53) b_ack!47))))

(check-sat)
(exit)
