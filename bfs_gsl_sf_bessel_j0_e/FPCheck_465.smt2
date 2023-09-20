(declare-fun a_ack!684 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!684))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!684))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!684))
                           (fp.abs ((_ to_fp 11 53) a_ack!684))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c870ef54646d497))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ca14b37f4b51f71)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbca14b37f4b51f71))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c870ef54646d497)))
                   a!6))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                           (fp.abs a!5))
                   ((_ to_fp 11 53) #x3cb87fe49aab41e0)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!8)
                            a!5)
                    ((_ to_fp 11 53) #x3cb87fe49aab41e0))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!10))
                            (fp.abs a!8))
                    ((_ to_fp 11 53) #x3cd14b37f4b51f71)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!8)
                    ((_ to_fp 11 53) #xbcd14b37f4b51f71))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!12))
                            (fp.abs a!10))
                    ((_ to_fp 11 53) #x3ce8c5117a7e165e)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!12)
                            a!10)
                    ((_ to_fp 11 53) #x3ce8c5117a7e165e))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!14))
                            (fp.abs a!12))
                    ((_ to_fp 11 53) #x3d025463f95d4dfe)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!14)
                            a!12)
                    ((_ to_fp 11 53) #xbd025463f95d4dfe))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!7 a!9)
                                    a!11)
                            a!13)
                    a!15))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!17))
                            (fp.abs a!14))
                    ((_ to_fp 11 53) #x3d1c4576f98a17e6)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!17)
                            a!14)
                    ((_ to_fp 11 53) #x3d1c4576f98a17e6))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!19))
                            (fp.abs a!17))
                    ((_ to_fp 11 53) #x3d36c62e10210508)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!19)
                            a!17)
                    ((_ to_fp 11 53) #xbd36c62e10210508))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!21))
                            (fp.abs a!19))
                    ((_ to_fp 11 53) #x3d534962e767fe90)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!21)
                            a!19)
                    ((_ to_fp 11 53) #x3d534962e767fe90))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!23))
                            (fp.abs a!21))
                    ((_ to_fp 11 53) #x3d714a3a502b1a66)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!23)
                            a!21)
                    ((_ to_fp 11 53) #xbd714a3a502b1a66))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!18)
                                    a!20)
                            a!22)
                    a!24))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!26))
                            (fp.abs a!23))
                    ((_ to_fp 11 53) #x3d908bed9d6f5d57)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!26)
                            a!23)
                    ((_ to_fp 11 53) #x3d908bed9d6f5d57))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!28))
                            (fp.abs a!26))
                    ((_ to_fp 11 53) #x3db1166c1cebee53)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!28)
                            a!26)
                    ((_ to_fp 11 53) #xbdb1166c1cebee53))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!30))
                            (fp.abs a!28))
                    ((_ to_fp 11 53) #x3dd34f3c14a1979b)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!30)
                            a!28)
                    ((_ to_fp 11 53) #x3dd34f3c14a1979b))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!32))
                            (fp.abs a!30))
                    ((_ to_fp 11 53) #x3df853935c75ecbd)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!32)
                            a!30)
                    ((_ to_fp 11 53) #xbdf853935c75ecbd))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!27)
                                    a!29)
                            a!31)
                    a!33))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!35))
                            (fp.abs a!32))
                    ((_ to_fp 11 53) #x3e2187aece277c17)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!35)
                            a!32)
                    ((_ to_fp 11 53) #x3e2187aece277c17))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!37))
                            (fp.abs a!35))
                    ((_ to_fp 11 53) #x3e4e00b5c3944d1d)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!37)
                            a!35)
                    ((_ to_fp 11 53) #xbe4e00b5c3944d1d))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!39))
                            (fp.abs a!37))
                    ((_ to_fp 11 53) #x3e8025014fedc08f)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!39)
                            a!37)
                    ((_ to_fp 11 53) #x3e8025014fedc08f))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!41))
                            (fp.abs a!39))
                    ((_ to_fp 11 53) #x3eb80ab6e2a1c646)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!41)
                            a!39)
                    ((_ to_fp 11 53) #xbeb80ab6e2a1c646))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!34 a!36)
                                    a!38)
                            a!40)
                    a!42))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!44))
                            (fp.abs a!41))
                    ((_ to_fp 11 53) #x3efdae474388c1bb)))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!44)
                            a!41)
                    ((_ to_fp 11 53) #x3efdae474388c1bb))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!46))
                            (fp.abs a!44))
                    ((_ to_fp 11 53) #x3f576d56d14c43af)))
      (a!48 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!46)
                                    a!44)
                            ((_ to_fp 11 53) #xbf576d56d14c43af)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!43 a!45)
            a!47)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!48) (fp.abs a!46))
            ((_ to_fp 11 53) #x3fa7c4fe11c58d54)))))))))))))))))))))))))))

(check-sat)
(exit)
