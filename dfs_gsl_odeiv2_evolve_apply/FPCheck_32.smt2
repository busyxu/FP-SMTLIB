(declare-fun t_ack!239 () (_ BitVec 64))
(declare-fun t1_ack!240 () (_ BitVec 64))
(declare-fun h_ack!242 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!241 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!240)
                    ((_ to_fp 11 53) t_ack!239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!240)
               ((_ to_fp 11 53) t_ack!239))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!240)
                ((_ to_fp 11 53) t_ack!239))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!242)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!240)
               ((_ to_fp 11 53) t_ack!239))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!240)
                  ((_ to_fp 11 53) t_ack!239)))
  y1_ack!241))

(check-sat)
(exit)
