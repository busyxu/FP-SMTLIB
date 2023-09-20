(declare-fun t_ack!108 () (_ BitVec 64))
(declare-fun t1_ack!109 () (_ BitVec 64))
(declare-fun h_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!110 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!109)
                    ((_ to_fp 11 53) t_ack!108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!109)
               ((_ to_fp 11 53) t_ack!108))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!110)
          ((_ to_fp 11 53) y0_ack!110))
  #x3ff0000000000000))

(check-sat)
(exit)
