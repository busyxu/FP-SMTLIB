(declare-fun a_ack!19 () (_ BitVec 32))
(declare-fun b_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!19 #x00000000)))
(assert (= #x00000000 a_ack!19))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!18) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!18)))))

(check-sat)
(exit)
