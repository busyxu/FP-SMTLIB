(declare-fun a_ack!85 () (_ BitVec 32))
(declare-fun b_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!85 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!85))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!84)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!84)
                                   ((_ to_fp 11 53) b_ack!84))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    b_ack!84)))

(check-sat)
(exit)
