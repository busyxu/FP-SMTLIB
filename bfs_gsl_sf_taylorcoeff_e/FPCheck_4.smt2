(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun a_ack!22 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!22 #x00000000)))
(assert (not (= #x00000000 a_ack!22)))
(assert (not (= #x00000001 a_ack!22)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!22)
  (fp.add roundNearestTiesToEven
          (CF_log b_ack!21)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
