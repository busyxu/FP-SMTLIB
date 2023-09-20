(declare-fun b_ack!153 () (_ BitVec 32))
(declare-fun a_ack!155 () (_ BitVec 32))
(declare-fun c_ack!154 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!153 #x00000000)))
(assert (not (bvslt a_ack!155 b_ack!153)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!154) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!153)))
(assert (= #x00000000 b_ack!153))
(assert (not (= a_ack!155 b_ack!153)))
(assert (not (= a_ack!155 (bvadd #x00000001 b_ack!153))))
(assert (bvsle (bvadd #x00000002 b_ack!153) a_ack!155))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000002 b_ack!153))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000002 b_ack!153 b_ack!153)))
    a!1)))

(check-sat)
(exit)
