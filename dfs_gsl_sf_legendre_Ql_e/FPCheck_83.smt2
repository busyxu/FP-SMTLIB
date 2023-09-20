(declare-fun b_ack!246 () (_ BitVec 64))
(declare-fun a_ack!247 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!247 #x00000000)))
(assert (not (= #x00000000 a_ack!247)))
(assert (not (= #x00000001 a_ack!247)))
(assert (not (bvslt #x000186a0 a_ack!247)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!247))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!247))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
