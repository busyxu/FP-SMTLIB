(declare-fun x_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_tan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!31 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!32) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!32) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!32) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  a_ack!31
  (CF_tan (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) x_ack!32)))))

(check-sat)
(exit)
