(declare-fun a_ack!136 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!135 () (_ BitVec 64))
(declare-fun b_ack!134 () (_ BitVec 64))
(assert (not (bvslt a_ack!136 #x00000000)))
(assert (not (= #x00000000 a_ack!136)))
(assert (= #x00000001 a_ack!136))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!134)))
                   (fp.abs ((_ to_fp 11 53) c_ack!135)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 a!1)))

(check-sat)
(exit)
