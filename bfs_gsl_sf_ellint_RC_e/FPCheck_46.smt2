(declare-fun c_ack!322 () (_ BitVec 32))
(declare-fun a_ack!323 () (_ BitVec 64))
(declare-fun b_ack!321 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!322 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!323) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!321) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!323)
                    ((_ to_fp 11 53) b_ack!321))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!323) ((_ to_fp 11 53) b_ack!321))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!321) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!323)
                                   ((_ to_fp 11 53) b_ack!321))
                           ((_ to_fp 11 53) b_ack!321))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) b_ack!321) a!1)
            a!1)
    #x4000000000000000)))

(check-sat)
(exit)
