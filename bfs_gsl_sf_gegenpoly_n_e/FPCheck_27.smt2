(declare-fun b_ack!176 () (_ BitVec 64))
(declare-fun a_ack!178 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!177 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!178 #x00000000)))
(assert (not (= #x00000000 a_ack!178)))
(assert (not (= #x00000001 a_ack!178)))
(assert (= #x00000002 a_ack!178))
(assert (fp.eq ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!177))
                           ((_ to_fp 11 53) c_ack!177)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
