(declare-fun a_ack!278 () (_ BitVec 32))
(declare-fun b_ack!277 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!278 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!277) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!277) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!278)))
(assert (not (= #x00000001 a_ack!278)))
(assert (bvsle #x00000002 a_ack!278))
(assert (not (bvsle #x00000003 a_ack!278)))
(assert (bvsle #x00000000 a_ack!278))
(assert (bvsle #x00000001 a_ack!278))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!278)
  #x3ff0000000000000))

(check-sat)
(exit)
