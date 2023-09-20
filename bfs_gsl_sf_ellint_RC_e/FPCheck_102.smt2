(declare-fun c_ack!658 () (_ BitVec 32))
(declare-fun a_ack!659 () (_ BitVec 64))
(declare-fun b_ack!657 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!658 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!659) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!657) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!659)
                    ((_ to_fp 11 53) b_ack!657))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!659) ((_ to_fp 11 53) b_ack!657))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!657) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!659)
                                   ((_ to_fp 11 53) b_ack!657))
                           ((_ to_fp 11 53) b_ack!657))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand c_ack!658 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!657)
                                   a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!2) a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!657)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   ((_ to_fp 11 53) b_ack!657)))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!659)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   ((_ to_fp 11 53) b_ack!657)))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!5 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand c_ack!658 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!2 a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!3)
                                   a!3)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!4 a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!659)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   ((_ to_fp 11 53) b_ack!657)))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!657)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   ((_ to_fp 11 53) b_ack!657)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!2))
                   ((_ to_fp 11 53) #x3fd0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!2))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
  (FPCHECK_FADD_OVERFLOW a!3 a!4))))

(check-sat)
(exit)
