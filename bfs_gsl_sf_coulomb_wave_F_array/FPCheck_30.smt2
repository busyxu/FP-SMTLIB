(declare-fun d_ack!179 () (_ BitVec 64))
(declare-fun b_ack!178 () (_ BitVec 32))
(declare-fun a_ack!181 () (_ BitVec 64))
(declare-fun c_ack!180 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!179) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!178))
(assert (not (bvsle #x00000001 b_ack!178)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!181) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!180)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!180))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (FPCHECK_FADD_ACCURACY a!1 #x8000000000000000)))

(check-sat)
(exit)
