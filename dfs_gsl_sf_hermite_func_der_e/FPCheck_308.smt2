(declare-fun a_ack!2008 () (_ BitVec 32))
(declare-fun b_ack!2006 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!2007 () (_ BitVec 64))
(assert (not (bvslt a_ack!2008 #x00000000)))
(assert (not (bvslt b_ack!2006 #x00000000)))
(assert (not (= #x00000000 a_ack!2008)))
(assert (= #x00000001 a_ack!2008))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) c_ack!2007))
  #x3fe8093870155910))

(check-sat)
(exit)
