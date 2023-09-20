(declare-fun b_ack!978 () (_ BitVec 32))
(declare-fun a_ack!980 () (_ BitVec 32))
(declare-fun c_ack!979 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!978 #x00000000)))
(assert (not (bvslt a_ack!980 b_ack!978)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!979) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!979) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!978)))
(assert (= #x00000000 b_ack!978))
(assert (not (= a_ack!980 b_ack!978)))
(assert (not (= a_ack!980 (bvadd #x00000001 b_ack!978))))
(assert (bvsle (bvadd #x00000002 b_ack!978) a_ack!980))
(assert (bvsle (bvadd #x00000003 b_ack!978) a_ack!980))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!978 b_ack!978))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000003 b_ack!978)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd (bvmul #x00000002 (bvadd #x00000003 b_ack!978))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!978 b_ack!978)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY (fp.mul roundNearestTiesToEven a!2 a!3) a!4))))

(check-sat)
(exit)
