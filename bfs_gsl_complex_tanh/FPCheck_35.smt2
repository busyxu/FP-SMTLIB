(declare-fun x_ack!119 () (_ BitVec 64))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!118 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!119))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (CF_sinh x_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (CF_pow (CF_cos y_ack!118) #x4000000000000000)
  (CF_pow (CF_sinh x_ack!119) #x4000000000000000)))

(check-sat)
(exit)
