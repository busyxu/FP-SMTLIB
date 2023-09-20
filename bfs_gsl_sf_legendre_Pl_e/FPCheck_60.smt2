(declare-fun a_ack!216 () (_ BitVec 32))
(declare-fun b_ack!215 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!216 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!215) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!215) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!216)))
(assert (not (= #x00000001 a_ack!216)))
(assert (not (= #x00000002 a_ack!216)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!215) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!215) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!216 #x000186a0))
(assert (bvsle #x00000002 a_ack!216))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!215))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!215))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3cb0000000000000)))
    #x4000000000000000)))

(check-sat)
(exit)
