(declare-fun b_ack!945 () (_ BitVec 32))
(declare-fun a_ack!947 () (_ BitVec 32))
(declare-fun c_ack!946 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!945 #x00000000)))
(assert (not (bvslt a_ack!947 b_ack!945)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!946) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!946) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!945)))
(assert (= #x00000000 b_ack!945))
(assert (not (= a_ack!947 b_ack!945)))
(assert (not (= a_ack!947 (bvadd #x00000001 b_ack!945))))
(assert (bvsle (bvadd #x00000002 b_ack!945) a_ack!947))
(assert (bvsle (bvadd #x00000003 b_ack!945) a_ack!947))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000003 b_ack!945)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvadd #x00000003 b_ack!945))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!945 b_ack!945)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!3))))

(check-sat)
(exit)
