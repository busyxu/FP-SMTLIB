(declare-fun b_ack!2010 () (_ BitVec 32))
(declare-fun a_ack!2012 () (_ BitVec 32))
(declare-fun c_ack!2011 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2010 #x00000000)))
(assert (not (bvslt a_ack!2012 b_ack!2010)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2011) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2011) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2010)))
(assert (= #x00000000 b_ack!2010))
(assert (not (= a_ack!2012 b_ack!2010)))
(assert (not (= a_ack!2012 (bvadd #x00000001 b_ack!2010))))
(assert (bvsle (bvadd #x00000002 b_ack!2010) a_ack!2012))
(assert (bvsle (bvadd #x00000003 b_ack!2010) a_ack!2012))
(assert (bvsle (bvadd #x00000004 b_ack!2010) a_ack!2012))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!2010 b_ack!2010))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000004 b_ack!2010)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd (bvmul #x00000002 (bvadd #x00000004 b_ack!2010))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!2010 b_ack!2010)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW (fp.mul roundNearestTiesToEven a!2 a!3) a!4))))

(check-sat)
(exit)
