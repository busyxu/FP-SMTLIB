(declare-fun a_ack!38 () (_ BitVec 64))
(declare-fun x_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_atan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!39)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!38)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!39)
               ((_ to_fp 11 53) a_ack!38))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_atan (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!39)
                   ((_ to_fp 11 53) a_ack!38)))
  #x400921fb54442d18))

(check-sat)
(exit)
