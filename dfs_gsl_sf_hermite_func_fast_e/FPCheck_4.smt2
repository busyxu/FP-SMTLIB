(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun b_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!17 #x000003e8))
(assert (not (bvslt a_ack!17 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!16) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!17 #x00000001)))
(assert (not (bvslt #x00000001 a_ack!17)))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!17 #x00000002) #x00000001)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff54d264f787eb7)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!2))))

(check-sat)
(exit)
