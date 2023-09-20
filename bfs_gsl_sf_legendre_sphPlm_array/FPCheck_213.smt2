(declare-fun b_ack!984 () (_ BitVec 32))
(declare-fun a_ack!986 () (_ BitVec 32))
(declare-fun c_ack!985 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!984 #x00000000)))
(assert (not (bvslt a_ack!986 b_ack!984)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!985) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!985) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!984)))
(assert (= #x00000000 b_ack!984))
(assert (not (= a_ack!986 b_ack!984)))
(assert (not (= a_ack!986 (bvadd #x00000001 b_ack!984))))
(assert (bvsle (bvadd #x00000002 b_ack!984) a_ack!986))
(assert (bvsle (bvadd #x00000003 b_ack!984) a_ack!986))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!984 b_ack!984))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000003 b_ack!984)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd (bvmul #x00000002 (bvadd #x00000003 b_ack!984))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!984 b_ack!984)))
                   a!1)))
  (FPCHECK_FDIV_INVALID (fp.mul roundNearestTiesToEven a!2 a!3) a!4))))

(check-sat)
(exit)
